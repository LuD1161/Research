.class public abstract LI3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lu3/l;Ljava/lang/Object;Ll3/i;)Lu3/l;
    .locals 1

    new-instance v0, LI3/x$a;

    invoke-direct {v0, p0, p1, p2}, LI3/x$a;-><init>(Lu3/l;Ljava/lang/Object;Ll3/i;)V

    return-object v0
.end method

.method public static final b(Lu3/l;Ljava/lang/Object;Ll3/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LI3/x;->c(Lu3/l;Ljava/lang/Object;LI3/O;)LI3/O;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static final c(Lu3/l;Ljava/lang/Object;LI3/O;)LI3/O;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p2, p0}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2

    :cond_0
    new-instance p2, LI3/O;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in undelivered element handler for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, LI3/O;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static synthetic d(Lu3/l;Ljava/lang/Object;LI3/O;ILjava/lang/Object;)LI3/O;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, LI3/x;->c(Lu3/l;Ljava/lang/Object;LI3/O;)LI3/O;

    move-result-object p0

    return-object p0
.end method
