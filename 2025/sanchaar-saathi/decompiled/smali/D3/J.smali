.class public abstract LD3/J;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/i;)LD3/I;
    .locals 3

    new-instance v0, LI3/f;

    sget-object v1, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, LD3/t0;->b(LD3/p0;ILjava/lang/Object;)LD3/x;

    move-result-object v1

    invoke-interface {p0, v1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, LI3/f;-><init>(Ll3/i;)V

    return-object v0
.end method

.method public static final b(Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LI3/B;

    invoke-interface {p1}, Ll3/e;->a()Ll3/i;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LI3/B;-><init>(Ll3/i;Ll3/e;)V

    invoke-static {v0, v0, p0}, LJ3/b;->b(LI3/B;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Ln3/h;->c(Ll3/e;)V

    :cond_0
    return-object p0
.end method

.method public static final c(LD3/I;)V
    .locals 0

    invoke-interface {p0}, LD3/I;->p()Ll3/i;

    move-result-object p0

    invoke-static {p0}, LD3/t0;->e(Ll3/i;)V

    return-void
.end method
