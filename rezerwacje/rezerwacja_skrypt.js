const columns = 15
const rows = 10
const id_klienta = document.getElementById('user').innerText
const id_repertuaru = document.getElementById('repertuar').innerText
const id_godzina = document.getElementById('godzina').innerText
let seatsContainer = document.getElementById("seats");


async function drawSeats() {
    console.log("xd")
    const response = await fetch("./get_seats.php", {
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({user: id_klienta, godzina: id_godzina})
    })
    const takenSeats = await response.json();
    let seatsTable = document.createElement('table');
    for (let row = 1; row < rows + 1; row++) {
         let seatsRow = seatsTable.appendChild(document.createElement('tr')); //create table row
        // add row index to table row
        let rowIndex = document.createElement("td");
        rowIndex.classList.add("seats__row-index");
        rowIndex.innerText = row;
        seatsRow.appendChild(rowIndex);
    
        for (let column = 1; column < columns + 1; column++) {
            isFree = true;
            seatElement = document.createElement('td');
            takenSeats.userSeats.forEach(element => {
                if (row == element.row && column == element.column) {
                    isFree = false;
                    seatElement.classList.add("seats__seat--user")
                    seatElement.addEventListener("click", deleteSeat)
                }
            });
            takenSeats.occupiedSeats.forEach(element => {
                if (row == element.row && column == element.column) {
                    isFree = false;
                    seatElement.classList.add("seats__seat--occupied")
                    seatElement.addEventListener("click", () => alert("Zajęte!"))
                }
            });
            // TODO add all functional events (free - can take, occupied - no function etc)
            if (isFree) {
                seatElement.addEventListener("click", reserveSeat)
            }
            seatElement.id = row + '-' + column
            seatElement.classList.add("seats__seat-icon")
            // TODO fetch from database which seats are occupied
            seatsRow.appendChild(seatElement);
        }
    }
    seatsContainer.innerHTML = "";
    seatsContainer.appendChild(seatsTable);
}


async function reserveSeat(e) {
    [row, column] = e.target.id.split('-')
    console.log(JSON.stringify({'row': row, 'column': column, 'id_repertuaru': id_repertuaru, 'id_godzina': id_godzina, 'id_klienta': id_klienta}))
    const response = await fetch("./reserve_seat.php", {
        headers: {
        //   'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({'row': row, 'column': column, 'id_repertuaru': id_repertuaru, 'id_godzina': id_godzina, 'id_klienta': id_klienta})
    })
    console.log(response)
    x = await response.json()
    if (x.status == "zabroniono") {
        alert("Zbyt wiele miejsc!")
    }
    console.log(x)
    drawSeats()
}

async function deleteSeat(e) {
    console.log("Usuń")
    console.log(e.target.id.split('-'))
    row = e.target.id.split('-')[0]
    column = e.target.id.split('-')[1]
    console.log(JSON.stringify({'row': row, 'column': column, 'id_repertuaru': id_repertuaru, 'id_godzina': id_godzina, 'id_klienta': id_klienta}))
    const response = await fetch("./delete_seat.php", {
        headers: {
        //   'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({'row': row, 'column': column, 'id_repertuaru': id_repertuaru, 'id_godzina': id_godzina, 'id_klienta': id_klienta})
    })
    console.log(response)
    x = await response.text()
    console.log(x)
    drawSeats()
}



drawSeats()
let x = setInterval(drawSeats, 1000)



// fetch("./get_seats.php", {
//     headers: {
//       'Accept': 'application/json',
//       'Content-Type': 'application/json'
//     },
//     method: "POST",
//     body: JSON.stringify({user: 1})
// }).then((res) => console.log(res.json()))
