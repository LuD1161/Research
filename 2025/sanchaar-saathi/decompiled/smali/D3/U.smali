.class public abstract LD3/U;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/T;I)V
    .locals 3

    invoke-virtual {p0}, LD3/T;->d()Ll3/e;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    instance-of v2, v0, LI3/j;

    if-eqz v2, :cond_2

    invoke-static {p1}, LD3/U;->b(I)Z

    move-result p1

    iget v2, p0, LD3/T;->g:I

    invoke-static {v2}, LD3/U;->b(I)Z

    move-result v2

    if-ne p1, v2, :cond_2

    move-object p1, v0

    check-cast p1, LI3/j;

    iget-object p1, p1, LI3/j;->h:LD3/F;

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    invoke-virtual {p1, v0}, LD3/F;->L(Ll3/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, LD3/U;->e(LD3/T;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v1}, LD3/U;->d(LD3/T;Ll3/e;Z)V

    :goto_1
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(LD3/T;Ll3/e;Z)V
    .locals 3

    invoke-virtual {p0}, LD3/T;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LD3/T;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Lh3/h;->e:Lh3/h$a;

    invoke-static {v1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v1, Lh3/h;->e:Lh3/h$a;

    invoke-virtual {p0, v0}, LD3/T;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LI3/j;

    iget-object p2, p1, LI3/j;->i:Ll3/e;

    iget-object v0, p1, LI3/j;->k:Ljava/lang/Object;

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v1

    invoke-static {v1, v0}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, LI3/J;->a:LI3/F;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, LD3/E;->g(Ll3/e;Ll3/i;Ljava/lang/Object;)LD3/L0;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    :try_start_0
    iget-object p1, p1, LI3/j;->i:Ll3/e;

    invoke-interface {p1, p0}, Ll3/e;->q(Ljava/lang/Object;)V

    sget-object p0, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, LD3/L0;->T0()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v1, v0}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, LD3/L0;->T0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v0}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Ll3/e;->q(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static final e(LD3/T;)V
    .locals 4

    sget-object v0, LD3/J0;->a:LD3/J0;

    invoke-virtual {v0}, LD3/J0;->b()LD3/Z;

    move-result-object v0

    invoke-virtual {v0}, LD3/Z;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, LD3/Z;->Q(LD3/T;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LD3/Z;->S(Z)V

    :try_start_0
    invoke-virtual {p0}, LD3/T;->d()Ll3/e;

    move-result-object v2

    invoke-static {p0, v2, v1}, LD3/U;->d(LD3/T;Ll3/e;Z)V

    :cond_1
    invoke-virtual {v0}, LD3/Z;->X()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, LD3/Z;->N(Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, LD3/T;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, LD3/Z;->N(Z)V

    throw p0
.end method
