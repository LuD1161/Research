.class public final enum LX2/o$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation


# static fields
.field public static final enum f:LX2/o$l;

.field public static final enum g:LX2/o$l;

.field public static final synthetic h:[LX2/o$l;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LX2/o$l;

    const/4 v1, 0x0

    const-string v2, "SystemUiOverlay.top"

    const-string v3, "TOP_OVERLAYS"

    invoke-direct {v0, v3, v1, v2}, LX2/o$l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LX2/o$l;->f:LX2/o$l;

    new-instance v0, LX2/o$l;

    const/4 v1, 0x1

    const-string v2, "SystemUiOverlay.bottom"

    const-string v3, "BOTTOM_OVERLAYS"

    invoke-direct {v0, v3, v1, v2}, LX2/o$l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LX2/o$l;->g:LX2/o$l;

    invoke-static {}, LX2/o$l;->b()[LX2/o$l;

    move-result-object v0

    sput-object v0, LX2/o$l;->h:[LX2/o$l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LX2/o$l;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b()[LX2/o$l;
    .locals 2

    sget-object v0, LX2/o$l;->f:LX2/o$l;

    sget-object v1, LX2/o$l;->g:LX2/o$l;

    filled-new-array {v0, v1}, [LX2/o$l;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)LX2/o$l;
    .locals 5

    invoke-static {}, LX2/o$l;->values()[LX2/o$l;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, LX2/o$l;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such SystemUiOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)LX2/o$l;
    .locals 1

    const-class v0, LX2/o$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LX2/o$l;

    return-object p0
.end method

.method public static values()[LX2/o$l;
    .locals 1

    sget-object v0, LX2/o$l;->h:[LX2/o$l;

    invoke-virtual {v0}, [LX2/o$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX2/o$l;

    return-object v0
.end method
