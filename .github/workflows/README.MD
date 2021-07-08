## Simple stress test

This [image](https://hub.docker.com/r/leonardolemos/java-http-stress) is meant for a simple HTTP stress test, built in Java, useful for autoscaling tests.

This image is based on [EC2 master class course from Stephane Maarek](https://www.udemy.com/course/aws-ec2-masterclass/)

Check [this image](https://github.com/jleonardolemos/http-stress) too. It is an option with similar features built in PHP

**IMPORTANT: This image is not production ready**

### Running the container

Use this command to run the container:

```sh
docker run -p 80:4567 leonardolemos/java-stress-test
```

The service will be accessible in `localhost`

**OBS: The container will always expose the 4567 port**

### Endpoints

After run the container you can use this endpoints:

| Endpoint  | Feature |
|---|---|
| / | Show container ip and ID |
| /details | Show request informations(headers for example) |
| /cpu | stress CPU |
| /ram | Alloc a bunch of RAM |
| /ram/info | Show info about the RAM being used |
| /ram/clean | Release RAM previously allocked |
| /health | Show health status |
| /health/flip | Turn container into unhealth |