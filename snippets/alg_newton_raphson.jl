function newton_raphson(f, df, x0; tol=1e-8, max_iter=100)
    x = x0
    for i in 1:max_iter
        fx = f(x)
        dfx = df(x)
        if abs(fx) < tol
            println("Converged in $i iterations.")
            return x
        end
        if dfx == 0
            error("Derivative is zero. Method fails.")
        end
        x -= fx / dfx
    end
    error("Did not converge in $max_iter iterations.")
end
