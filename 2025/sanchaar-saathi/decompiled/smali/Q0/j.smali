.class public final enum LQ0/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LQ0/j;

.field public static final enum f:LQ0/j;

.field public static final enum g:LQ0/j;

.field public static final enum h:LQ0/j;

.field public static final enum i:LQ0/j;

.field public static final enum j:LQ0/j;

.field public static final synthetic k:[LQ0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ0/j;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->e:LQ0/j;

    new-instance v0, LQ0/j;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->f:LQ0/j;

    new-instance v0, LQ0/j;

    const-string v1, "UNMETERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->g:LQ0/j;

    new-instance v0, LQ0/j;

    const-string v1, "NOT_ROAMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->h:LQ0/j;

    new-instance v0, LQ0/j;

    const-string v1, "METERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->i:LQ0/j;

    new-instance v0, LQ0/j;

    const-string v1, "TEMPORARILY_UNMETERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LQ0/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/j;->j:LQ0/j;

    invoke-static {}, LQ0/j;->b()[LQ0/j;

    move-result-object v0

    sput-object v0, LQ0/j;->k:[LQ0/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[LQ0/j;
    .locals 6

    sget-object v0, LQ0/j;->e:LQ0/j;

    sget-object v1, LQ0/j;->f:LQ0/j;

    sget-object v2, LQ0/j;->g:LQ0/j;

    sget-object v3, LQ0/j;->h:LQ0/j;

    sget-object v4, LQ0/j;->i:LQ0/j;

    sget-object v5, LQ0/j;->j:LQ0/j;

    filled-new-array/range {v0 .. v5}, [LQ0/j;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LQ0/j;
    .locals 1

    const-class v0, LQ0/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ0/j;

    return-object p0
.end method

.method public static values()[LQ0/j;
    .locals 1

    sget-object v0, LQ0/j;->k:[LQ0/j;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ0/j;

    return-object v0
.end method
