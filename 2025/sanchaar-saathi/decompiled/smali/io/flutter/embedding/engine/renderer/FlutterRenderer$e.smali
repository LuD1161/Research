.class public final enum Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

.field public static final enum g:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

.field public static final enum h:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

.field public static final enum i:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

.field public static final synthetic j:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    const-string v1, "FOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->g:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    const-string v1, "HINGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->h:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    const-string v1, "CUTOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->i:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    invoke-static {}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->b()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->j:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->e:I

    return-void
.end method

.method public static synthetic b()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;
    .locals 4

    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->f:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->g:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->h:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->i:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    filled-new-array {v0, v1, v2, v3}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;
    .locals 1

    const-class v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;
    .locals 1

    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->j:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    return-object v0
.end method
