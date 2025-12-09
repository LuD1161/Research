.class public final Lu0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu0/o;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroid/content/Context;

.field public e:I

.field public f:Lu0/o$c;

.field public g:Lu0/k;

.field public final h:Lu0/j;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/content/ServiceConnection;

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lu0/o;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceIntent"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidationTracker"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu0/r;->a:Ljava/lang/String;

    iput-object p4, p0, Lu0/r;->b:Lu0/o;

    iput-object p5, p0, Lu0/r;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lu0/r;->d:Landroid/content/Context;

    new-instance p2, Lu0/r$b;

    invoke-direct {p2, p0}, Lu0/r$b;-><init>(Lu0/r;)V

    iput-object p2, p0, Lu0/r;->h:Lu0/j;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lu0/r;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Lu0/r$c;

    invoke-direct {p2, p0}, Lu0/r$c;-><init>(Lu0/r;)V

    iput-object p2, p0, Lu0/r;->j:Landroid/content/ServiceConnection;

    new-instance v0, Lu0/p;

    invoke-direct {v0, p0}, Lu0/p;-><init>(Lu0/r;)V

    iput-object v0, p0, Lu0/r;->k:Ljava/lang/Runnable;

    new-instance v0, Lu0/q;

    invoke-direct {v0, p0}, Lu0/q;-><init>(Lu0/r;)V

    iput-object v0, p0, Lu0/r;->l:Ljava/lang/Runnable;

    invoke-virtual {p4}, Lu0/o;->h()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    new-array p5, p5, [Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p4, p5}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [Ljava/lang/String;

    new-instance p5, Lu0/r$a;

    invoke-direct {p5, p0, p4}, Lu0/r$a;-><init>(Lu0/r;[Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lu0/r;->l(Lu0/o$c;)V

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static synthetic a(Lu0/r;)V
    .locals 0

    invoke-static {p0}, Lu0/r;->k(Lu0/r;)V

    return-void
.end method

.method public static synthetic b(Lu0/r;)V
    .locals 0

    invoke-static {p0}, Lu0/r;->n(Lu0/r;)V

    return-void
.end method

.method public static final k(Lu0/r;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu0/r;->b:Lu0/o;

    invoke-virtual {p0}, Lu0/r;->f()Lu0/o$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu0/o;->m(Lu0/o$c;)V

    return-void
.end method

.method public static final n(Lu0/r;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lu0/r;->g:Lu0/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu0/r;->h:Lu0/j;

    iget-object v2, p0, Lu0/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lu0/k;->s(Lu0/j;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu0/r;->e:I

    iget-object v0, p0, Lu0/r;->b:Lu0/o;

    invoke-virtual {p0}, Lu0/r;->f()Lu0/o$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lu0/o;->b(Lu0/o$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ROOM"

    const-string v1, "Cannot register multi-instance invalidation callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lu0/r;->e:I

    return v0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lu0/r;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final e()Lu0/o;
    .locals 1

    iget-object v0, p0, Lu0/r;->b:Lu0/o;

    return-object v0
.end method

.method public final f()Lu0/o$c;
    .locals 1

    iget-object v0, p0, Lu0/r;->f:Lu0/o$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "observer"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lu0/r;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final h()Lu0/k;
    .locals 1

    iget-object v0, p0, Lu0/r;->g:Lu0/k;

    return-object v0
.end method

.method public final i()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lu0/r;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final j()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lu0/r;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final l(Lu0/o$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lu0/r;->f:Lu0/o$c;

    return-void
.end method

.method public final m(Lu0/k;)V
    .locals 0

    iput-object p1, p0, Lu0/r;->g:Lu0/k;

    return-void
.end method
