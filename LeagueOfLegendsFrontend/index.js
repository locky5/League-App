document.addEventListener('DOMContentLoaded', function(){
  fetch('http://localhost:3000/games')
    .then(res => res.json())
    .then(json => {
      for (const game of json) {
        const leagueContainer = document.createElement('div')
        leagueContainer.className = "card"
        leagueContainer.innerText = game.teams

        const bigAssList = document.getElementsByTagName('main')[0]
        bigAssList.appendChild(leagueContainer)
      }
    })
})
