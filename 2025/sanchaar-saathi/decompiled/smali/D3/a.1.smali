.class public abstract LD3/a;
.super LD3/w0;
.source "SourceFile"

# interfaces
.implements LD3/p0;
.implements Ll3/e;
.implements LD3/I;


# instance fields
.field public final g:Ll3/i;


# direct methods
.method public constructor <init>(Ll3/i;ZZ)V
    .locals 0

    invoke-direct {p0, p3}, LD3/w0;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, LD3/p0;->b:LD3/p0$b;

    invoke-interface {p1, p2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p2

    check-cast p2, LD3/p0;

    invoke-virtual {p0, p2}, LD3/w0;->n0(LD3/p0;)V

    :cond_0
    invoke-interface {p1, p0}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p1

    iput-object p1, p0, LD3/a;->g:Ll3/i;

    return-void
.end method


# virtual methods
.method public P0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->P(Ljava/lang/Object;)V

    return-void
.end method

.method public Q0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public R0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final S0(LD3/K;Ljava/lang/Object;Lu3/p;)V
    .locals 0

    invoke-virtual {p1, p3, p2, p0}, LD3/K;->f(Lu3/p;Ljava/lang/Object;Ll3/e;)V

    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LD3/M;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ll3/i;
    .locals 1

    iget-object v0, p0, LD3/a;->g:Ll3/i;

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-super {p0}, LD3/w0;->b()Z

    move-result v0

    return v0
.end method

.method public final m0(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LD3/a;->g:Ll3/i;

    invoke-static {v0, p1}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()Ll3/i;
    .locals 1

    iget-object v0, p0, LD3/a;->g:Ll3/i;

    return-object v0
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, LD3/D;->d(Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LD3/w0;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LD3/x0;->b:LI3/F;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LD3/a;->P0(Ljava/lang/Object;)V

    return-void
.end method

.method public u0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LD3/a;->g:Ll3/i;

    invoke-static {v0}, LD3/E;->b(Ll3/i;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, LD3/w0;->u0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LD3/w0;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, LD3/z;

    if-eqz v0, :cond_0

    check-cast p1, LD3/z;

    iget-object v0, p1, LD3/z;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, LD3/z;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, LD3/a;->Q0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LD3/a;->R0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
