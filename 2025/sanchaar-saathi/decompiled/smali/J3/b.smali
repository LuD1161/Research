.class public abstract LJ3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu3/p;Ljava/lang/Object;Ll3/e;)V
    .locals 3

    invoke-static {p2}, Ln3/h;->a(Ll3/e;)Ll3/e;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    :try_start_1
    invoke-static {p0, v2}, Lv3/z;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/p;

    invoke-interface {p0, p1, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p2, v1}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ll3/e;->q(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-static {p2, v1}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    sget-object p1, Lh3/h;->e:Lh3/h$a;

    invoke-static {p0}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ll3/e;->q(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public static final b(LI3/B;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p2, v0}, Lv3/z;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu3/p;

    invoke-interface {p2, p1, p0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LD3/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, LD3/z;-><init>(Ljava/lang/Throwable;ZILv3/g;)V

    move-object p1, p2

    :goto_0
    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, LD3/w0;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LD3/x0;->b:LI3/F;

    if-ne p0, p1, :cond_1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of p1, p0, LD3/z;

    if-nez p1, :cond_2

    invoke-static {p0}, LD3/x0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    check-cast p0, LD3/z;

    iget-object p0, p0, LD3/z;->a:Ljava/lang/Throwable;

    throw p0
.end method
