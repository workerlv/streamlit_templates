# Streamlit in docker image

## Clone project

## Navigate to project in terminal
```
cd path/to/project
```

## Checkout this branch
```
git checkout in_docker_image
```

## Build project
```
docker build -t streamlit_template .
```

## Run project
```
docker run -p 8501:8501 streamlit_template
```