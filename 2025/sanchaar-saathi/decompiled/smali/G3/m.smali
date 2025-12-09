.class public abstract synthetic LG3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LG3/d;Ll3/e;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, LG3/m$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LG3/m$b;

    iget v1, v0, LG3/m$b;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/m$b;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/m$b;

    invoke-direct {v0, p1}, LG3/m$b;-><init>(Ll3/e;)V

    :goto_0
    iget-object p1, v0, LG3/m$b;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/m$b;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LG3/m$b;->i:Ljava/lang/Object;

    check-cast p0, LG3/m$a;

    iget-object v0, v0, LG3/m$b;->h:Ljava/lang/Object;

    check-cast v0, Lv3/w;

    :try_start_0
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch LH3/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    new-instance p1, Lv3/w;

    invoke-direct {p1}, Lv3/w;-><init>()V

    new-instance v2, LG3/m$a;

    invoke-direct {v2, p1}, LG3/m$a;-><init>(Lv3/w;)V

    :try_start_1
    iput-object p1, v0, LG3/m$b;->h:Ljava/lang/Object;

    iput-object v2, v0, LG3/m$b;->i:Ljava/lang/Object;

    iput v3, v0, LG3/m$b;->k:I

    invoke-interface {p0, v2, v0}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LH3/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, LH3/j;->a(LH3/a;LG3/e;)V

    :goto_2
    iget-object p0, v0, Lv3/w;->e:Ljava/lang/Object;

    return-object p0
.end method
