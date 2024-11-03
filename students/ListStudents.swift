import Foundation

func listStudents() async throws -> [Student] {
    let filePath = "./db/students.json"
    let url = URL(fileURLWithPath: filePath)

    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let students = try decoder.decode([Student].self, from: data)
        return students
    } catch {
        print("Failed to read or decode students.json: \(error)")
        throw error
    }
}