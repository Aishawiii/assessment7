function fn(){
//define environtment
    var env = karate.env;
    karate.log('karate.env system properly was:', env);
    if(!env){
    env='dev';
    }

    var config = {
        env: env
    }

    karate.configure('connectTimeout',30000)
    karate.configure('readTimeout',30000)
    return config;

}