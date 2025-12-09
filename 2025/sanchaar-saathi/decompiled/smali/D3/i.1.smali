.class public abstract synthetic LD3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/I;Ll3/i;LD3/K;Lu3/p;)LD3/p0;
    .locals 1

    invoke-static {p0, p1}, LD3/E;->d(LD3/I;Ll3/i;)Ll3/i;

    move-result-object p0

    invoke-virtual {p2}, LD3/K;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LD3/y0;

    invoke-direct {p1, p0, p3}, LD3/y0;-><init>(Ll3/i;Lu3/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, LD3/F0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LD3/F0;-><init>(Ll3/i;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, LD3/a;->S0(LD3/K;Ljava/lang/Object;Lu3/p;)V

    return-object p1
.end method

.method public static synthetic b(LD3/I;Ll3/i;LD3/K;Lu3/p;ILjava/lang/Object;)LD3/p0;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Ll3/j;->e:Ll3/j;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, LD3/K;->e:LD3/K;

    :cond_1
    invoke-static {p0, p1, p2, p3}, LD3/g;->a(LD3/I;Ll3/i;LD3/K;Lu3/p;)LD3/p0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ll3/i;Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    invoke-static {v0, p0}, LD3/E;->e(Ll3/i;Ll3/i;)Ll3/i;

    move-result-object p0

    invoke-static {p0}, LD3/t0;->e(Ll3/i;)V

    if-ne p0, v0, :cond_0

    new-instance v0, LI3/B;

    invoke-direct {v0, p0, p2}, LI3/B;-><init>(Ll3/i;Ll3/e;)V

    invoke-static {v0, v0, p1}, LJ3/b;->b(LI3/B;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Ll3/f;->d:Ll3/f$b;

    invoke-interface {p0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v2

    invoke-interface {v0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    invoke-static {v2, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LD3/L0;

    invoke-direct {v0, p0, p2}, LD3/L0;-><init>(Ll3/i;Ll3/e;)V

    invoke-virtual {v0}, LD3/a;->a()Ll3/i;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, LJ3/b;->b(LI3/B;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, LD3/S;

    invoke-direct {v0, p0, p2}, LD3/S;-><init>(Ll3/i;Ll3/e;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, LJ3/a;->d(Lu3/p;Ljava/lang/Object;Ll3/e;Lu3/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, LD3/S;->T0()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Ln3/h;->c(Ll3/e;)V

    :cond_2
    return-object p0
.end method
