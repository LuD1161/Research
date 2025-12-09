.class public final Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

.field public final c:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    iput-object p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;->c:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    return-void
.end method
