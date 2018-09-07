    const request=require('request');   // Requiring request
    var getWeather= (lat, lng, callback) => {    //creating a getWeather function
      request({   //in this we made a request to the google geolocation api and getting the data back
   url:`https://api.forecast.io/forecast/4a04d1c42fd9d32c97a2c291a32d5e2d/${lat},${lng} `,
  json: true 
},(error, response, body)=>{
     if (error) {
      callback('Unable to connect'); 
     } else if (response.statusCode === 400){
      callback('Unable to fetch weather')
     } else if (response.statusCode === 200) {
      callback(undefined, {
        temperature: body.currently.temperature,        //getting real temperature
        apparentTemperature: body.currently.apparentTemperature  //getting apparent temperature
      });
     }
});
    };
module.exports.getWeather = getWeather;
    