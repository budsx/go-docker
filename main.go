package main

import (
    "github.com/gofiber/fiber/v2"
)

func main() {
    // Create a new Fiber instance
    app := fiber.New()

    // Define a greeting endpoint
    app.Get("/api/greet/:name", func(c *fiber.Ctx) error {
        name := c.Params("name")
        return c.JSON(fiber.Map{"message": "Hello, " + name + "!"})
    })

    // Start the Fiber app on port 8080
    if err := app.Listen(":3000"); err != nil {
        panic(err)
    }
}
