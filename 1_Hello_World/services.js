module.exports = class HelloService extends cds.ApplicationService {
    init() {
        this.on("hello", async (req) => {
            const greeting = `Hello, ${req.data.to}!`;
            return { message: greeting };
        })
        return super.init();
    }
}