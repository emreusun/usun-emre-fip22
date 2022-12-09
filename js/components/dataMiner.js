function getPortfolioData(params, cb) {
    // this is the base URL of the API
    // fetch the data from the API
    let baseURL = "./includes/index.php";

    if (params) {
        let keys = Object.keys(params); // takes an object and creates an array of the keys ["id", "name"]

        // look at the MDN reference for Array.map to see what it does
        // it just re-uses the values however you like -> in this case we're building some text
        let newQStringParams = keys.map(key => `${key}=${params[key]}`).join("&&");

        baseURL += `?${newQStringParams}`;
    }    
    
    fetch(baseURL)
    .then(res => res.json()) // unpack the API response (turn it back into plain JS)
    .then(data => {
        // call a function to generate our dynamic content below
        cb(data[0]);
    })
    .catch(error => console.log(error)); // catch and report any errors
}

export { getPortfolioData }
