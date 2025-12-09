.class public final enum Lio/flutter/plugin/editing/p$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:Lio/flutter/plugin/editing/p$c$a;

.field public static final enum f:Lio/flutter/plugin/editing/p$c$a;

.field public static final enum g:Lio/flutter/plugin/editing/p$c$a;

.field public static final enum h:Lio/flutter/plugin/editing/p$c$a;

.field public static final synthetic i:[Lio/flutter/plugin/editing/p$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/flutter/plugin/editing/p$c$a;

    const-string v1, "NO_TARGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/p$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    new-instance v0, Lio/flutter/plugin/editing/p$c$a;

    const-string v1, "FRAMEWORK_CLIENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/p$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/p$c$a;->f:Lio/flutter/plugin/editing/p$c$a;

    new-instance v0, Lio/flutter/plugin/editing/p$c$a;

    const-string v1, "VIRTUAL_DISPLAY_PLATFORM_VIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/p$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    new-instance v0, Lio/flutter/plugin/editing/p$c$a;

    const-string v1, "PHYSICAL_DISPLAY_PLATFORM_VIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/p$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    invoke-static {}, Lio/flutter/plugin/editing/p$c$a;->b()[Lio/flutter/plugin/editing/p$c$a;

    move-result-object v0

    sput-object v0, Lio/flutter/plugin/editing/p$c$a;->i:[Lio/flutter/plugin/editing/p$c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lio/flutter/plugin/editing/p$c$a;
    .locals 4

    sget-object v0, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->f:Lio/flutter/plugin/editing/p$c$a;

    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    sget-object v3, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    filled-new-array {v0, v1, v2, v3}, [Lio/flutter/plugin/editing/p$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugin/editing/p$c$a;
    .locals 1

    const-class v0, Lio/flutter/plugin/editing/p$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugin/editing/p$c$a;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugin/editing/p$c$a;
    .locals 1

    sget-object v0, Lio/flutter/plugin/editing/p$c$a;->i:[Lio/flutter/plugin/editing/p$c$a;

    invoke-virtual {v0}, [Lio/flutter/plugin/editing/p$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugin/editing/p$c$a;

    return-object v0
.end method
