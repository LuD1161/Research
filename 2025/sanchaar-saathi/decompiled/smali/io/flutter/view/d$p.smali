.class public final enum Lio/flutter/view/d$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation


# static fields
.field public static final enum e:Lio/flutter/view/d$p;

.field public static final enum f:Lio/flutter/view/d$p;

.field public static final enum g:Lio/flutter/view/d$p;

.field public static final synthetic h:[Lio/flutter/view/d$p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/flutter/view/d$p;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/d$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/d$p;->e:Lio/flutter/view/d$p;

    new-instance v0, Lio/flutter/view/d$p;

    const-string v1, "LTR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/d$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/d$p;->f:Lio/flutter/view/d$p;

    new-instance v0, Lio/flutter/view/d$p;

    const-string v1, "RTL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/view/d$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/d$p;->g:Lio/flutter/view/d$p;

    invoke-static {}, Lio/flutter/view/d$p;->b()[Lio/flutter/view/d$p;

    move-result-object v0

    sput-object v0, Lio/flutter/view/d$p;->h:[Lio/flutter/view/d$p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lio/flutter/view/d$p;
    .locals 3

    sget-object v0, Lio/flutter/view/d$p;->e:Lio/flutter/view/d$p;

    sget-object v1, Lio/flutter/view/d$p;->f:Lio/flutter/view/d$p;

    sget-object v2, Lio/flutter/view/d$p;->g:Lio/flutter/view/d$p;

    filled-new-array {v0, v1, v2}, [Lio/flutter/view/d$p;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Lio/flutter/view/d$p;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lio/flutter/view/d$p;->e:Lio/flutter/view/d$p;

    return-object p0

    :cond_0
    sget-object p0, Lio/flutter/view/d$p;->f:Lio/flutter/view/d$p;

    return-object p0

    :cond_1
    sget-object p0, Lio/flutter/view/d$p;->g:Lio/flutter/view/d$p;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/d$p;
    .locals 1

    const-class v0, Lio/flutter/view/d$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/d$p;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/d$p;
    .locals 1

    sget-object v0, Lio/flutter/view/d$p;->h:[Lio/flutter/view/d$p;

    invoke-virtual {v0}, [Lio/flutter/view/d$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/d$p;

    return-object v0
.end method
