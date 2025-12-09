.class public final Landroidx/work/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LQ0/v;

.field public final d:LQ0/h;

.field public final e:LQ0/q;

.field public final f:LR/a;

.field public final g:LR/a;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Z


# direct methods
.method public constructor <init>(Landroidx/work/a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/a$b;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p1, Landroidx/work/a$b;->d:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/a;->m:Z

    invoke-virtual {p0, v0}, Landroidx/work/a;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Landroidx/work/a;->m:Z

    iput-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p1, Landroidx/work/a$b;->b:LQ0/v;

    if-nez v0, :cond_2

    invoke-static {}, LQ0/v;->c()LQ0/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->c:LQ0/v;

    goto :goto_2

    :cond_2
    iput-object v0, p0, Landroidx/work/a;->c:LQ0/v;

    :goto_2
    iget-object v0, p1, Landroidx/work/a$b;->c:LQ0/h;

    if-nez v0, :cond_3

    invoke-static {}, LQ0/h;->c()LQ0/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/a;->d:LQ0/h;

    goto :goto_3

    :cond_3
    iput-object v0, p0, Landroidx/work/a;->d:LQ0/h;

    :goto_3
    iget-object v0, p1, Landroidx/work/a$b;->e:LQ0/q;

    if-nez v0, :cond_4

    new-instance v0, LR0/d;

    invoke-direct {v0}, LR0/d;-><init>()V

    iput-object v0, p0, Landroidx/work/a;->e:LQ0/q;

    goto :goto_4

    :cond_4
    iput-object v0, p0, Landroidx/work/a;->e:LQ0/q;

    :goto_4
    iget v0, p1, Landroidx/work/a$b;->i:I

    iput v0, p0, Landroidx/work/a;->i:I

    iget v0, p1, Landroidx/work/a$b;->j:I

    iput v0, p0, Landroidx/work/a;->j:I

    iget v0, p1, Landroidx/work/a$b;->k:I

    iput v0, p0, Landroidx/work/a;->k:I

    iget v0, p1, Landroidx/work/a$b;->l:I

    iput v0, p0, Landroidx/work/a;->l:I

    iget-object v0, p1, Landroidx/work/a$b;->f:LR/a;

    iput-object v0, p0, Landroidx/work/a;->f:LR/a;

    iget-object v0, p1, Landroidx/work/a$b;->g:LR/a;

    iput-object v0, p0, Landroidx/work/a;->g:LR/a;

    iget-object p1, p1, Landroidx/work/a$b;->h:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/util/concurrent/Executor;
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/work/a;->b(Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public final b(Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0, p0, p1}, Landroidx/work/a$a;-><init>(Landroidx/work/a;Z)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public e()LR/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->f:LR/a;

    return-object v0
.end method

.method public f()LQ0/h;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->d:LQ0/h;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->j:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroidx/work/a;->i:I

    return v0
.end method

.method public k()LQ0/q;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->e:LQ0/q;

    return-object v0
.end method

.method public l()LR/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->g:LR/a;

    return-object v0
.end method

.method public m()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public n()LQ0/v;
    .locals 1

    iget-object v0, p0, Landroidx/work/a;->c:LQ0/v;

    return-object v0
.end method
