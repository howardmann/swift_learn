let axios = require('axios')

let baseUrl = 'https://narutodb.xyz/api'
let clanUrl = `${baseUrl}/clan?limit=100`

let getAllClanNames = () => {
  return axios.get(clanUrl)
    .then(resp => {
      const data = resp.data
      const result = data.clans.map(el => ({id: el.id, name: el.name}))
      return result
    })
    .catch(err => {
      console.error('Error fetching data:', err)
    })
}

const run = async() =>{
  let result = await getAllClanNames()
  console.log(result);  
}
run()

// Output
// [
//   { id: 0, name: 'Aburame' },
//   { id: 1, name: 'Akimichi' },
//   { id: 2, name: 'Amagiri' },
//   { id: 6, name: 'Fūma   (Presumed)' },
//   { id: 7, name: 'Fūma  (Land of Sound)' },
//   ...
//   { id: 44, name: 'Tsuchigumo' },
//   { id: 45, name: 'Uchiha' },
//   { id: 46, name: 'Uzumaki' },
//   { id: 47, name: 'Uzumaki' },
//   { id: 57, name: 'Ōtsutsuki' }
// ]