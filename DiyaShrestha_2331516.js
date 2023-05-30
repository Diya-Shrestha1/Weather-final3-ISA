const city = document.getElementById("city");
const condition = document.getElementById("weathercond");
const temp = document.getElementById("temperature");
const description = document.getElementById("detail");
const pressure = document.getElementById("pressuree");
const humidity = document.getElementById("humidity");
const speed = document.getElementById("speed");
const date = document.getElementById("date");
const AD = new Date();
const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

const btn = document.getElementById("btn");
btn.onclick = async function () {
  const input = document.getElementById('input').value;
  fetchData(input);

  if (!navigator.onLine) {
    const cachedData = localStorage.getItem(input);
    if (cachedData) {
      console.log("User is offline. Data fetched from cache");
      displayWeather(JSON.parse(cachedData).data);
    }
  } else {
    const cachedData = localStorage.getItem(input);
    if (cachedData) {
      const parsedData = JSON.parse(cachedData);
      const cacheTimestamp = parsedData.timestamp;
      const currentTime = Date.now();
      const timeDifference = currentTime - cacheTimestamp;
      const fiveMinutesInMilliseconds = 5 * 60 * 1000;

      if (timeDifference < fiveMinutesInMilliseconds) {
        console.log("Data fetched from cache");
        displayWeather(parsedData.data);
        return;
      } else {
        localStorage.removeItem(input);
        console.log("Removed old data from local storage");
      }
    }

    await fetchData(input);
  }
};

async function fetchData(search) {
  const response = await fetch("https://api.openweathermap.org/data/2.5/weather?units=metric&q=" + search + "&appid=01bb3d4e89ad105d1007aa5189f561a0");
  const data = await response.json();
  console.log(data);
  const currentTimestamp = Date.now();
  const weatherData = {
    timestamp: currentTimestamp,
    data: data
  };
  localStorage.setItem(search, JSON.stringify(weatherData));
  displayWeather(data);
}

function displayWeather(data) {
  city.innerHTML = data.name;
  date.innerHTML = "Date: " + months[AD.getMonth()] + " " + AD.getDate() + ", " + AD.getFullYear();
  condition.innerHTML = data.weather[0].description;
  temp.innerHTML = data.main.temp + "°C";
  pressure.innerHTML = "Pressure: " + data.main.pressure + " hPA";
  humidity.innerHTML = "Humidity: " + data.main.humidity + "%";
  speed.innerHTML = "Wind Speed: " + data.wind.speed + " m/s";
  const { "1h": rain1h, "3h": rain3h } = data.rain || {};
  const rainfall = rain1h ? rain1h + " mm (1h)" : rain3h ? rain3h + " mm (3h)" : "N/A";
  document.getElementById("raiNFall").innerHTML = `Rainfall: ${rainfall}`;

  const wicon = document.querySelector(".wicon");
  if (data.weather[0].main === "Clear") {
    wicon.src = "https://openweathermap.org/img/wn/01d@2x.png";
  } else if (data.weather[0].main === "Clouds") {
    wicon.src = "https://openweathermap.org/img/wn/02d@2x.png";
  } else if (data.weather[0].main === "Thunderstorm") {
    wicon.src = "https://openweathermap.org/img/wn/11d@2x.png";
  } else if (data.weather[0].main === "Rain") {
    wicon.src = "https://openweathermap.org/img/wn/09d@2x.png";
  } else if (data.weather[0].main === "Snow") {
    wicon.src = "https://openweathermap.org/img/wn/13d@2x.png";
  } else if (data.weather[0].main === "Mist") {
    wicon.src = "https://openweathermap.org/img/wn/50d@2x.png";
  }

  // Update other UI elements or perform additional actions as needed
}

async function checkStorage(input) {
  const cachedData = localStorage.getItem(input);
  if (cachedData) {
    const parsedData = JSON.parse(cachedData);
    const cacheTimestamp = parsedData.timestamp;
    const currentTime = Date.now();
    const timeDifference = currentTime - cacheTimestamp;
    const fiveMinutesInMilliseconds = 5 * 60 * 1000;

    if (timeDifference < fiveMinutesInMilliseconds) {
      console.log("Data fetched from cache");
      displayWeather(parsedData.data);
      return;
    } else {
      localStorage.removeItem(input);
      console.log("Removed old data from local storage");
    }
  }

  await fetchData(input);
}

// Function to check user's online status and fetch data if necessary

function checkUserStatus() {
  if (!navigator.onLine) {
    const input = "Scottsdale"; // Provide the default city here
    const cachedData = localStorage.getItem(input);
    if (cachedData) {
      console.log("User is offline. Data fetched from cache");
      displayWeather(JSON.parse(cachedData).data);
      return;
    }
  }
}


// Execute the functions on page load
const input = "Scottsdale"; // Provide the default city here
checkUserStatus();
checkStorage(input);