#!/usr/bin/env nextflow

process sayHello {
    input:
    val x

    output:
    file("${x}.txt")

    script:
    """
    echo '${x} world!' > ${x}.txt
    """
}


workflow {
    Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
