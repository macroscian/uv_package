FROM julia:1.0.1-stretch
WORKDIR /uv_damage
COPY . .
RUN julia -- install.jl
EXPOSE 8000
CMD ["julia", "-e", "using uv_damage; uv_damage.start_server()"]
