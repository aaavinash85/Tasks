const yargs=require('yargs');       // Requiring Yargs, it is used to get Input from user
const geocode=require('./geocode/geocode.js');   // Requiring geocode.js, it will provide the address
const weather =require('./weather/weather.js'); // Requiring weathe.js, it will provide the weather
const argv =yargs.options({   //obect that stores the final parsed output

     a: {              //first option for yargs
     	demand: true,
     	alias:'address',  //setting alias for -a
     	describe:'Address to fetch weather',
     	string: true
      } 
 })
    .argv; 
  geocode.geocodeAddress(argv.address, (errorMessage, results)=>{     //fetching the address from geocode.js
     if (errorMessage){
      console.log(errorMessage);
     }else {
      console.log(results.address);
     weather.getWeather(results.latitude, results.location, (errorMessage, weatherResults) =>{  //fetching temperaturess
    if (errorMessage){
      console.log(errorMessage);
    } else {

      console.log(`Its currently ${weatherResults.temperature}. Its feel like ${weatherResults.apparentTemperature}.`);
    }
  });
     }
  }); 
   



 

