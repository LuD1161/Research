.class public final enum LF3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LF3/a;

.field public static final enum f:LF3/a;

.field public static final enum g:LF3/a;

.field public static final synthetic h:[LF3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF3/a;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF3/a;->e:LF3/a;

    new-instance v0, LF3/a;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LF3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF3/a;->f:LF3/a;

    new-instance v0, LF3/a;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LF3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF3/a;->g:LF3/a;

    invoke-static {}, LF3/a;->b()[LF3/a;

    move-result-object v0

    sput-object v0, LF3/a;->h:[LF3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[LF3/a;
    .locals 3

    sget-object v0, LF3/a;->e:LF3/a;

    sget-object v1, LF3/a;->f:LF3/a;

    sget-object v2, LF3/a;->g:LF3/a;

    filled-new-array {v0, v1, v2}, [LF3/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LF3/a;
    .locals 1

    const-class v0, LF3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF3/a;

    return-object p0
.end method

.method public static values()[LF3/a;
    .locals 1

    sget-object v0, LF3/a;->h:[LF3/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF3/a;

    return-object v0
.end method
