.class public final enum LQ0/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LQ0/s;

.field public static final enum f:LQ0/s;

.field public static final enum g:LQ0/s;

.field public static final enum h:LQ0/s;

.field public static final enum i:LQ0/s;

.field public static final enum j:LQ0/s;

.field public static final synthetic k:[LQ0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ0/s;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->e:LQ0/s;

    new-instance v0, LQ0/s;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->f:LQ0/s;

    new-instance v0, LQ0/s;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->g:LQ0/s;

    new-instance v0, LQ0/s;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->h:LQ0/s;

    new-instance v0, LQ0/s;

    const-string v1, "BLOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->i:LQ0/s;

    new-instance v0, LQ0/s;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LQ0/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/s;->j:LQ0/s;

    invoke-static {}, LQ0/s;->b()[LQ0/s;

    move-result-object v0

    sput-object v0, LQ0/s;->k:[LQ0/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[LQ0/s;
    .locals 6

    sget-object v0, LQ0/s;->e:LQ0/s;

    sget-object v1, LQ0/s;->f:LQ0/s;

    sget-object v2, LQ0/s;->g:LQ0/s;

    sget-object v3, LQ0/s;->h:LQ0/s;

    sget-object v4, LQ0/s;->i:LQ0/s;

    sget-object v5, LQ0/s;->j:LQ0/s;

    filled-new-array/range {v0 .. v5}, [LQ0/s;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LQ0/s;
    .locals 1

    const-class v0, LQ0/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ0/s;

    return-object p0
.end method

.method public static values()[LQ0/s;
    .locals 1

    sget-object v0, LQ0/s;->k:[LQ0/s;

    invoke-virtual {v0}, [LQ0/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ0/s;

    return-object v0
.end method


# virtual methods
.method public f()Z
    .locals 1

    sget-object v0, LQ0/s;->g:LQ0/s;

    if-eq p0, v0, :cond_1

    sget-object v0, LQ0/s;->h:LQ0/s;

    if-eq p0, v0, :cond_1

    sget-object v0, LQ0/s;->j:LQ0/s;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
