.class public final enum LQ0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LQ0/a;

.field public static final enum f:LQ0/a;

.field public static final synthetic g:[LQ0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ0/a;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/a;->e:LQ0/a;

    new-instance v0, LQ0/a;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/a;->f:LQ0/a;

    invoke-static {}, LQ0/a;->b()[LQ0/a;

    move-result-object v0

    sput-object v0, LQ0/a;->g:[LQ0/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[LQ0/a;
    .locals 2

    sget-object v0, LQ0/a;->e:LQ0/a;

    sget-object v1, LQ0/a;->f:LQ0/a;

    filled-new-array {v0, v1}, [LQ0/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LQ0/a;
    .locals 1

    const-class v0, LQ0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ0/a;

    return-object p0
.end method

.method public static values()[LQ0/a;
    .locals 1

    sget-object v0, LQ0/a;->g:[LQ0/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ0/a;

    return-object v0
.end method
