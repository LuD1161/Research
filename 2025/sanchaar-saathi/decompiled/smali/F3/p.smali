.class public abstract LF3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LF3/r;Lu3/a;Ll3/e;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, LF3/p$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LF3/p$a;

    iget v1, v0, LF3/p$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LF3/p$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, LF3/p$a;

    invoke-direct {v0, p2}, LF3/p$a;-><init>(Ll3/e;)V

    :goto_0
    iget-object p2, v0, LF3/p$a;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LF3/p$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LF3/p$a;->i:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lu3/a;

    iget-object p0, v0, LF3/p$a;->h:Ljava/lang/Object;

    check-cast p0, LF3/r;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object p2

    sget-object v2, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p2, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p2

    if-ne p2, p0, :cond_5

    :try_start_1
    iput-object p0, v0, LF3/p$a;->h:Ljava/lang/Object;

    iput-object p1, v0, LF3/p$a;->i:Ljava/lang/Object;

    iput v3, v0, LF3/p$a;->k:I

    new-instance p2, LD3/m;

    invoke-static {v0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object v2

    invoke-direct {p2, v2, v3}, LD3/m;-><init>(Ll3/e;I)V

    invoke-virtual {p2}, LD3/m;->A()V

    new-instance v2, LF3/p$b;

    invoke-direct {v2, p2}, LF3/p$b;-><init>(LD3/l;)V

    invoke-interface {p0, v2}, LF3/t;->A(Lu3/l;)V

    invoke-virtual {p2}, LD3/m;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_3

    invoke-static {v0}, Ln3/h;->c(Ll3/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-interface {p1}, Lu3/a;->c()Ljava/lang/Object;

    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0

    :goto_2
    invoke-interface {p1}, Lu3/a;->c()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(LD3/I;Ll3/i;ILF3/a;LD3/K;Lu3/l;Lu3/p;)LF3/s;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, LF3/g;->b(ILF3/a;Lu3/l;ILjava/lang/Object;)LF3/d;

    move-result-object p2

    invoke-static {p0, p1}, LD3/E;->d(LD3/I;Ll3/i;)Ll3/i;

    move-result-object p0

    new-instance p1, LF3/q;

    invoke-direct {p1, p0, p2}, LF3/q;-><init>(Ll3/i;LF3/d;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, LD3/w0;->j(Lu3/l;)LD3/W;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, LD3/a;->S0(LD3/K;Ljava/lang/Object;Lu3/p;)V

    return-object p1
.end method

.method public static synthetic c(LD3/I;Ll3/i;ILF3/a;LD3/K;Lu3/l;Lu3/p;ILjava/lang/Object;)LF3/s;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Ll3/j;->e:Ll3/j;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, LF3/a;->e:LF3/a;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, LD3/K;->e:LD3/K;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, LF3/p;->b(LD3/I;Ll3/i;ILF3/a;LD3/K;Lu3/l;Lu3/p;)LF3/s;

    move-result-object p0

    return-object p0
.end method
