const formValidation = (e) => {
  const x = document.getElementById("name").value;
  const email = document.getElementById("email").value;
  var Regex =
    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  // if (x == "") {
    alert("Please fill the Name");
  // }
  if (!email.match(Regex)) {
    alert("email is invalid");
  } else {
    alert("email is valid");
  }
};

const callajax = () => {
  const xhttp = new XMLHttpRequest();
  xhttp.open("GET", "sample.json", true);
  xhttp.send();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      const data = JSON.parse(this.response);
      document.getElementById("demo").innerHTML = data.name + " " + data.age;
    }
  };
};

$(
  $("button").click(function () {
    $("h1").animate({ left: '150px',opacity: '0.5',height: '150px' },1000);
  })
);
