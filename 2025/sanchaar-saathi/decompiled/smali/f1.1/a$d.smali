.class public Lf1/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public e:LS1/b;

.field public f:J

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:J

.field public j:I

.field public k:Ljava/nio/ByteBuffer;

.field public final synthetic l:Lf1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lf1/a;LS1/b;)V
    .locals 2

    iput-object p1, p0, Lf1/a$d;->l:Lf1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lf1/a$d;->f:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/a$d;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf1/a$d;->h:Z

    const/4 p1, 0x0

    iput p1, p0, Lf1/a$d;->j:I

    iput-object p2, p0, Lf1/a$d;->e:LS1/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf1/a$d;->e:LS1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LS1/b;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf1/a$d;->e:LS1/b;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lf1/a$d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lf1/a$d;->h:Z

    iget-object p1, p0, Lf1/a$d;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c([BLandroid/hardware/Camera;)V
    .locals 5

    iget-object v0, p0, Lf1/a$d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    iput-object p2, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {p2}, Lf1/a;->d(Lf1/a;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lf1/a$d;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf1/a$d;->i:J

    iget p2, p0, Lf1/a$d;->j:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lf1/a$d;->j:I

    iget-object p2, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {p2}, Lf1/a;->d(Lf1/a;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lf1/a$d;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lf1/a$d;->g:Ljava/lang/Object;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lf1/a$d;->h:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lf1/a$d;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :cond_0
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, LS1/c$a;

    invoke-direct {v1}, LS1/c$a;-><init>()V

    iget-object v2, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {v3}, Lf1/a;->f(Lf1/a;)Ly1/a;

    move-result-object v3

    invoke-virtual {v3}, Ly1/a;->b()I

    move-result v3

    iget-object v4, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {v4}, Lf1/a;->f(Lf1/a;)Ly1/a;

    move-result-object v4

    invoke-virtual {v4}, Ly1/a;->a()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v2, v3, v4, v5}, LS1/c$a;->c(Ljava/nio/ByteBuffer;III)LS1/c$a;

    move-result-object v1

    iget v2, p0, Lf1/a$d;->j:I

    invoke-virtual {v1, v2}, LS1/c$a;->b(I)LS1/c$a;

    move-result-object v1

    iget-wide v2, p0, Lf1/a$d;->i:J

    invoke-virtual {v1, v2, v3}, LS1/c$a;->e(J)LS1/c$a;

    move-result-object v1

    iget-object v2, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {v2}, Lf1/a;->e(Lf1/a;)I

    move-result v2

    invoke-virtual {v1, v2}, LS1/c$a;->d(I)LS1/c$a;

    move-result-object v1

    invoke-virtual {v1}, LS1/c$a;->a()LS1/c;

    move-result-object v1

    iget-object v2, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    iput-object v3, p0, Lf1/a$d;->k:Ljava/nio/ByteBuffer;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lf1/a$d;->e:LS1/b;

    invoke-virtual {v0, v1}, LS1/b;->c(LS1/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {v0}, Lf1/a;->b(Lf1/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_1
    iget-object v0, p0, Lf1/a$d;->l:Lf1/a;

    invoke-static {v0}, Lf1/a;->b(Lf1/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
