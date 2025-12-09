.class public Lc1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/b;


# instance fields
.field public final a:La1/s;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc1/c;->b:Landroid/os/Handler;

    new-instance v0, Lc1/c$a;

    invoke-direct {v0, p0}, Lc1/c$a;-><init>(Lc1/c;)V

    iput-object v0, p0, Lc1/c;->c:Ljava/util/concurrent/Executor;

    new-instance v0, La1/s;

    invoke-direct {v0, p1}, La1/s;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lc1/c;->a:La1/s;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lc1/c;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public bridge synthetic b()Lc1/a;
    .locals 1

    invoke-virtual {p0}, Lc1/c;->d()La1/s;

    move-result-object v0

    return-object v0
.end method

.method public d()La1/s;
    .locals 1

    iget-object v0, p0, Lc1/c;->a:La1/s;

    return-object v0
.end method
