.class public abstract synthetic LD3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/i;Lu3/p;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Ll3/f;->d:Ll3/f$b;

    invoke-interface {p0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v1

    check-cast v1, Ll3/f;

    if-nez v1, :cond_0

    sget-object v1, LD3/J0;->a:LD3/J0;

    invoke-virtual {v1}, LD3/J0;->b()LD3/Z;

    move-result-object v1

    sget-object v2, LD3/i0;->e:LD3/i0;

    invoke-interface {p0, v1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    invoke-static {v2, p0}, LD3/E;->d(LD3/I;Ll3/i;)Ll3/i;

    move-result-object p0

    goto :goto_3

    :cond_0
    instance-of v2, v1, LD3/Z;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, LD3/Z;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, LD3/Z;->Y()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v3, v1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, LD3/J0;->a:LD3/J0;

    invoke-virtual {v1}, LD3/J0;->a()LD3/Z;

    move-result-object v1

    :goto_2
    sget-object v2, LD3/i0;->e:LD3/i0;

    invoke-static {v2, p0}, LD3/E;->d(LD3/I;Ll3/i;)Ll3/i;

    move-result-object p0

    :goto_3
    new-instance v2, LD3/e;

    invoke-direct {v2, p0, v0, v1}, LD3/e;-><init>(Ll3/i;Ljava/lang/Thread;LD3/Z;)V

    sget-object p0, LD3/K;->e:LD3/K;

    invoke-virtual {v2, p0, v2, p1}, LD3/a;->S0(LD3/K;Ljava/lang/Object;Lu3/p;)V

    invoke-virtual {v2}, LD3/e;->T0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ll3/i;Lu3/p;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Ll3/j;->e:Ll3/j;

    :cond_0
    invoke-static {p0, p1}, LD3/g;->c(Ll3/i;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
