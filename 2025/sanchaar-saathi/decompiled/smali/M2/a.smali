.class public final LM2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM2/a$b;
    }
.end annotation


# static fields
.field public static d:LM2/a;

.field public static e:Z


# instance fields
.field public a:LR2/d;

.field public b:Lio/flutter/embedding/engine/FlutterJNI$c;

.field public c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(LR2/d;LQ2/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LM2/a;->a:LR2/d;

    .line 4
    iput-object p3, p0, LM2/a;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    .line 5
    iput-object p4, p0, LM2/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(LR2/d;LQ2/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;LM2/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LM2/a;-><init>(LR2/d;LQ2/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static e()LM2/a;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LM2/a;->e:Z

    sget-object v0, LM2/a;->d:LM2/a;

    if-nez v0, :cond_0

    new-instance v0, LM2/a$b;

    invoke-direct {v0}, LM2/a$b;-><init>()V

    invoke-virtual {v0}, LM2/a$b;->a()LM2/a;

    move-result-object v0

    sput-object v0, LM2/a;->d:LM2/a;

    :cond_0
    sget-object v0, LM2/a;->d:LM2/a;

    return-object v0
.end method


# virtual methods
.method public a()LQ2/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, LM2/a;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()LR2/d;
    .locals 1

    iget-object v0, p0, LM2/a;->a:LR2/d;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/FlutterJNI$c;
    .locals 1

    iget-object v0, p0, LM2/a;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    return-object v0
.end method
