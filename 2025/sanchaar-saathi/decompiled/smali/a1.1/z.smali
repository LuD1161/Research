.class public La1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public final e:Lb1/c;

.field public final f:Landroid/content/Context;

.field public final g:LZ0/u;

.field public final h:Landroidx/work/c;

.field public final i:LQ0/f;

.field public final j:Lc1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/z;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LZ0/u;Landroidx/work/c;LQ0/f;Lc1/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, La1/z;->e:Lb1/c;

    iput-object p1, p0, La1/z;->f:Landroid/content/Context;

    iput-object p2, p0, La1/z;->g:LZ0/u;

    iput-object p3, p0, La1/z;->h:Landroidx/work/c;

    iput-object p4, p0, La1/z;->i:LQ0/f;

    iput-object p5, p0, La1/z;->j:Lc1/b;

    return-void
.end method

.method public static synthetic a(La1/z;Lb1/c;)V
    .locals 0

    invoke-virtual {p0, p1}, La1/z;->c(Lb1/c;)V

    return-void
.end method


# virtual methods
.method public b()Ly2/a;
    .locals 1

    iget-object v0, p0, La1/z;->e:Lb1/c;

    return-object v0
.end method

.method public final synthetic c(Lb1/c;)V
    .locals 1

    iget-object v0, p0, La1/z;->e:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La1/z;->h:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->d()Ly2/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb1/c;->r(Ly2/a;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb1/a;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, La1/z;->g:LZ0/u;

    iget-boolean v0, v0, LZ0/u;->q:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iget-object v1, p0, La1/z;->j:Lc1/b;

    invoke-interface {v1}, Lc1/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, La1/y;

    invoke-direct {v2, p0, v0}, La1/y;-><init>(La1/z;Lb1/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, La1/z$a;

    invoke-direct {v1, p0, v0}, La1/z$a;-><init>(La1/z;Lb1/c;)V

    iget-object v2, p0, La1/z;->j:Lc1/b;

    invoke-interface {v2}, Lc1/b;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, La1/z;->e:Lb1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void
.end method
