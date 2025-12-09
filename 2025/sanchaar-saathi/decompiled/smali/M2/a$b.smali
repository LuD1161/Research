.class public final LM2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LM2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM2/a$b$a;
    }
.end annotation


# instance fields
.field public a:LR2/d;

.field public b:Lio/flutter/embedding/engine/FlutterJNI$c;

.field public c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LM2/a;
    .locals 7

    invoke-virtual {p0}, LM2/a$b;->b()V

    new-instance v6, LM2/a;

    iget-object v1, p0, LM2/a$b;->a:LR2/d;

    iget-object v3, p0, LM2/a$b;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    iget-object v4, p0, LM2/a$b;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LM2/a;-><init>(LR2/d;LQ2/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;LM2/a$a;)V

    return-object v6
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LM2/a$b;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    if-nez v0, :cond_0

    new-instance v0, Lio/flutter/embedding/engine/FlutterJNI$c;

    invoke-direct {v0}, Lio/flutter/embedding/engine/FlutterJNI$c;-><init>()V

    iput-object v0, p0, LM2/a$b;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    :cond_0
    iget-object v0, p0, LM2/a$b;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    new-instance v0, LM2/a$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LM2/a$b$a;-><init>(LM2/a$b;LM2/a$a;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LM2/a$b;->c:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, LM2/a$b;->a:LR2/d;

    if-nez v0, :cond_2

    new-instance v0, LR2/d;

    iget-object v1, p0, LM2/a$b;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    iget-object v2, p0, LM2/a$b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, LR2/d;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, LM2/a$b;->a:LR2/d;

    :cond_2
    return-void
.end method
