const request =require('request');
var geocodeAddress=(address, callback)=>{
var encodeAddress=encodeURIComponent(address);   // encoding the result of argv so that we can use it in the url
    request({   //in this we made a request to the google geolocation api and getting the data back
     url:`https://maps.googleapis.com/maps/api/geocode/json?address=${encodeAddress}` ,     //providing the address here
    json :true 
   },(error,response,body)=>{
    if (error){
      callback('Unable to connect to Servers');    
    } else if (body.status === 'ZERO_RESULTS'){
     callback('Unable to find the address');
    } else if (body.status === 'OK'){
      callback(undefined, {
        address: body.results[0].formatted_address,
        latitude: body.results[0].geometry.location.lat,
        location: body.results[0].geometry.location.lng      
      });

   }
}); 

 };

module.exports.geocodeAddress=geocodeAddress; //this make geocodeAddress availabe for other files
