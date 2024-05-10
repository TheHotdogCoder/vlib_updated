function filterLetter(l) {
    button = document.querySelector('#letterSort' + l)
    const letters = document.querySelectorAll('.letterSort')
    letters.forEach((l) => {
        l.classList.remove("isActive")
    })

    button.classList.add("isActive")

    const resTitles = document.querySelectorAll('.resTitle');

    let titleArray = [];

    for (let i = 0; i < resTitles.length; i++) {
        titleArray.push(resTitles[i].innerHTML);
    }

    for (let i = 0; i < titleArray.length; i++) {
        if (titleArray[i].toLowerCase().startsWith(l.toLowerCase())) {
            resTitles[i].parentElement.parentElement.style.display = "block";
            searchResponse = true;
        } else {
            resTitles[i].parentElement.parentElement.style.display = "none";
        }
    }
}

function sortVisible() {
    const letterFlex = document.querySelector('.sortBar')
    const navGrid = document.querySelector('.navigation')
    if (letterFlex.style.display == "flex") {
        letterFlex.style.display = "none"
        navGrid.style.gridTemplateColumns = "55px 1fr"
    } else {
        letterFlex.style.display = "flex"
        navGrid.style.gridTemplateColumns = "55px 1fr 55px"
    }
}

function getURLProp(identifier) {
    const link = window.location.toString()
    res = link.slice(link.lastIndexOf('?' + identifier + '=') + 4, link.lastIndexOf('?' + identifier + '=') + 5)
    if ((/^\d+$/).test(res) == false) {
        res = 'NaN'
    }
    return res
}