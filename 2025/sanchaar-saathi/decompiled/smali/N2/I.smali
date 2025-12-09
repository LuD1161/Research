.class public final enum LN2/I;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LN2/I;

.field public static final enum f:LN2/I;

.field public static final synthetic g:[LN2/I;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN2/I;

    const-string v1, "opaque"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LN2/I;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/I;->e:LN2/I;

    new-instance v0, LN2/I;

    const-string v1, "transparent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LN2/I;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN2/I;->f:LN2/I;

    invoke-static {}, LN2/I;->b()[LN2/I;

    move-result-object v0

    sput-object v0, LN2/I;->g:[LN2/I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LN2/I;
    .locals 2

    sget-object v0, LN2/I;->e:LN2/I;

    sget-object v1, LN2/I;->f:LN2/I;

    filled-new-array {v0, v1}, [LN2/I;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/I;
    .locals 1

    const-class v0, LN2/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/I;

    return-object p0
.end method

.method public static values()[LN2/I;
    .locals 1

    sget-object v0, LN2/I;->g:[LN2/I;

    invoke-virtual {v0}, [LN2/I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/I;

    return-object v0
.end method
