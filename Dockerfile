FROM ocaml/opam

RUN sudo apt update -y && sudo apt upgrade -y &&\
    sudo apt install -y m4 libpq-dev time &&\
    opam install ocamlfind postgresql num

RUN git clone https://github.com/dangtv/BIRDS

WORKDIR BIRDS

RUN eval $(opam env) &&\
    make release &&\
    sudo cp release/birds /usr/bin/

CMD ["bash"]
