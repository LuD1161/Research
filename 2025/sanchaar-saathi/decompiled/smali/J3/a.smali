.class public abstract LJ3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/e;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lh3/h;->e:Lh3/h$a;

    invoke-static {p1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ll3/e;->q(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Ll3/e;Ll3/e;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object p0

    sget-object v0, Lh3/h;->e:Lh3/h$a;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-static {v0}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, LI3/k;->c(Ll3/e;Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, LJ3/a;->a(Ll3/e;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(Lu3/p;Ljava/lang/Object;Ll3/e;Lu3/l;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lm3/b;->a(Lu3/p;Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p0

    invoke-static {p0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object p0

    sget-object p1, Lh3/h;->e:Lh3/h$a;

    sget-object p1, Lh3/n;->a:Lh3/n;

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, LI3/k;->b(Ll3/e;Ljava/lang/Object;Lu3/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, LJ3/a;->a(Ll3/e;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lu3/p;Ljava/lang/Object;Ll3/e;Lu3/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, LJ3/a;->c(Lu3/p;Ljava/lang/Object;Ll3/e;Lu3/l;)V

    return-void
.end method
