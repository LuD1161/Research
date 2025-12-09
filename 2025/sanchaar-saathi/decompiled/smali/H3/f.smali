.class public abstract LH3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(LG3/e;Ll3/i;)LG3/e;
    .locals 0

    invoke-static {p0, p1}, LH3/f;->d(LG3/e;Ll3/i;)LG3/e;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ll3/i;Ljava/lang/Object;Ljava/lang/Object;Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p2}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, LH3/r;

    invoke-direct {v0, p4, p0}, LH3/r;-><init>(Ll3/e;Ll3/i;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lv3/z;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lu3/p;

    invoke-interface {p3, p1, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    invoke-static {p4}, Ln3/h;->c(Ll3/e;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic c(Ll3/i;Ljava/lang/Object;Ljava/lang/Object;Lu3/p;Ll3/e;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, LI3/J;->b(Ll3/i;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, LH3/f;->b(Ll3/i;Ljava/lang/Object;Ljava/lang/Object;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LG3/e;Ll3/i;)LG3/e;
    .locals 1

    instance-of v0, p0, LH3/q;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LH3/s;

    invoke-direct {v0, p0, p1}, LH3/s;-><init>(LG3/e;Ll3/i;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
