.class public final synthetic Lio/flutter/embedding/engine/renderer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/k;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/k;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;

    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;->b(Lio/flutter/embedding/engine/renderer/FlutterRenderer$f;)V

    return-void
.end method
