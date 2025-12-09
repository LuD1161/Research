.class public final enum LN2/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:LN2/i$a;

.field public static final enum f:LN2/i$a;

.field public static final synthetic g:[LN2/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN2/i$a;

    const-string v1, "opaque"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN2/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/i$a;->e:LN2/i$a;

    new-instance v0, LN2/i$a;

    const-string v1, "transparent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LN2/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/i$a;->f:LN2/i$a;

    invoke-static {}, LN2/i$a;->b()[LN2/i$a;

    move-result-object v0

    sput-object v0, LN2/i$a;->g:[LN2/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LN2/i$a;
    .locals 2

    sget-object v0, LN2/i$a;->e:LN2/i$a;

    sget-object v1, LN2/i$a;->f:LN2/i$a;

    filled-new-array {v0, v1}, [LN2/i$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/i$a;
    .locals 1

    const-class v0, LN2/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/i$a;

    return-object p0
.end method

.method public static values()[LN2/i$a;
    .locals 1

    sget-object v0, LN2/i$a;->g:[LN2/i$a;

    invoke-virtual {v0}, [LN2/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/i$a;

    return-object v0
.end method
