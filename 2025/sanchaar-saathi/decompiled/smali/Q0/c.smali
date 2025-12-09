.class public final enum LQ0/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LQ0/c;

.field public static final enum f:LQ0/c;

.field public static final enum g:LQ0/c;

.field public static final enum h:LQ0/c;

.field public static final synthetic i:[LQ0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ0/c;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ0/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/c;->e:LQ0/c;

    new-instance v0, LQ0/c;

    const-string v1, "KEEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ0/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/c;->f:LQ0/c;

    new-instance v0, LQ0/c;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LQ0/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/c;->g:LQ0/c;

    new-instance v0, LQ0/c;

    const-string v1, "CANCEL_AND_REENQUEUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LQ0/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ0/c;->h:LQ0/c;

    invoke-static {}, LQ0/c;->b()[LQ0/c;

    move-result-object v0

    sput-object v0, LQ0/c;->i:[LQ0/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b()[LQ0/c;
    .locals 4

    sget-object v0, LQ0/c;->e:LQ0/c;

    sget-object v1, LQ0/c;->f:LQ0/c;

    sget-object v2, LQ0/c;->g:LQ0/c;

    sget-object v3, LQ0/c;->h:LQ0/c;

    filled-new-array {v0, v1, v2, v3}, [LQ0/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LQ0/c;
    .locals 1

    const-class v0, LQ0/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ0/c;

    return-object p0
.end method

.method public static values()[LQ0/c;
    .locals 1

    sget-object v0, LQ0/c;->i:[LQ0/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ0/c;

    return-object v0
.end method
