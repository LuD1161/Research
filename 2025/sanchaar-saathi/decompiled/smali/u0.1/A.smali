.class public abstract Lu0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu0/u;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lh3/d;


# direct methods
.method public constructor <init>(Lu0/u;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/A;->a:Lu0/u;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lu0/A;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lu0/A$a;

    invoke-direct {p1, p0}, Lu0/A$a;-><init>(Lu0/A;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, Lu0/A;->c:Lh3/d;

    return-void
.end method

.method public static final synthetic a(Lu0/A;)Ly0/k;
    .locals 0

    invoke-virtual {p0}, Lu0/A;->d()Ly0/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ly0/k;
    .locals 3

    invoke-virtual {p0}, Lu0/A;->c()V

    iget-object v0, p0, Lu0/A;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lu0/A;->g(Z)Ly0/k;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lu0/A;->a:Lu0/u;

    invoke-virtual {v0}, Lu0/u;->c()V

    return-void
.end method

.method public final d()Ly0/k;
    .locals 2

    invoke-virtual {p0}, Lu0/A;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu0/A;->a:Lu0/u;

    invoke-virtual {v1, v0}, Lu0/u;->f(Ljava/lang/String;)Ly0/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()Ly0/k;
    .locals 1

    iget-object v0, p0, Lu0/A;->c:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/k;

    return-object v0
.end method

.method public final g(Z)Ly0/k;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu0/A;->f()Ly0/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu0/A;->d()Ly0/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(Ly0/k;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu0/A;->f()Ly0/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lu0/A;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
