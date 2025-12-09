.class public abstract LF3/e;
.super LD3/a;
.source "SourceFile"

# interfaces
.implements LF3/d;


# instance fields
.field public final h:LF3/d;


# direct methods
.method public constructor <init>(Ll3/i;LF3/d;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, LD3/a;-><init>(Ll3/i;ZZ)V

    iput-object p2, p0, LF3/e;->h:LF3/d;

    return-void
.end method


# virtual methods
.method public A(Lu3/l;)V
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1}, LF3/t;->A(Lu3/l;)V

    return-void
.end method

.method public C()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0}, LF3/s;->C()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public E(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1}, LF3/t;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0}, LF3/t;->G()Z

    move-result v0

    return v0
.end method

.method public final T0()LF3/d;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    return-object v0
.end method

.method public U(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, LD3/w0;->I0(LD3/w0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1}, LF3/s;->c(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, LD3/w0;->S(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, LD3/w0;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, LD3/q0;

    invoke-static {p0}, LD3/w0;->L(LD3/w0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LD3/q0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LD3/p0;)V

    :cond_1
    invoke-virtual {p0, p1}, LF3/e;->U(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1}, LF3/s;->f(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()LF3/f;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0}, LF3/s;->iterator()LF3/f;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1, p2}, LF3/t;->n(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, LF3/e;->h:LF3/d;

    invoke-interface {v0, p1}, LF3/t;->o(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
