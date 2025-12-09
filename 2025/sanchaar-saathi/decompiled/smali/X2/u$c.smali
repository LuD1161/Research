.class public final enum LX2/u$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum f:LX2/u$c;

.field public static final enum g:LX2/u$c;

.field public static final synthetic h:[LX2/u$c;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LX2/u$c;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, LX2/u$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LX2/u$c;->f:LX2/u$c;

    new-instance v0, LX2/u$c;

    const-string v1, "dark"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, LX2/u$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LX2/u$c;->g:LX2/u$c;

    invoke-static {}, LX2/u$c;->b()[LX2/u$c;

    move-result-object v0

    sput-object v0, LX2/u$c;->h:[LX2/u$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LX2/u$c;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b()[LX2/u$c;
    .locals 2

    sget-object v0, LX2/u$c;->f:LX2/u$c;

    sget-object v1, LX2/u$c;->g:LX2/u$c;

    filled-new-array {v0, v1}, [LX2/u$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LX2/u$c;
    .locals 1

    const-class v0, LX2/u$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LX2/u$c;

    return-object p0
.end method

.method public static values()[LX2/u$c;
    .locals 1

    sget-object v0, LX2/u$c;->h:[LX2/u$c;

    invoke-virtual {v0}, [LX2/u$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX2/u$c;

    return-object v0
.end method
