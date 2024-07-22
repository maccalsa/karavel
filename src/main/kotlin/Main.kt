fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("Usage: myapp <arguments>")
        return
    }

    args.forEach { arg ->
        println("Argument: $arg")
    }
}