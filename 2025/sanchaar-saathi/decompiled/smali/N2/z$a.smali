.class public final enum LN2/z$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum f:LN2/z$a;

.field public static final enum g:LN2/z$a;

.field public static final enum h:LN2/z$a;

.field public static final enum i:LN2/z$a;

.field public static final enum j:LN2/z$a;

.field public static final synthetic k:[LN2/z$a;


# instance fields
.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LN2/z$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "kKeyboard"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$a;->f:LN2/z$a;

    new-instance v0, LN2/z$a;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "kDirectionalPad"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$a;->g:LN2/z$a;

    new-instance v0, LN2/z$a;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "kGamepad"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$a;->h:LN2/z$a;

    new-instance v0, LN2/z$a;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v4, "kJoystick"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$a;->i:LN2/z$a;

    new-instance v0, LN2/z$a;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v4, "kHdmi"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$a;->j:LN2/z$a;

    invoke-static {}, LN2/z$a;->b()[LN2/z$a;

    move-result-object v0

    sput-object v0, LN2/z$a;->k:[LN2/z$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, LN2/z$a;->e:J

    return-void
.end method

.method public static synthetic b()[LN2/z$a;
    .locals 5

    sget-object v0, LN2/z$a;->f:LN2/z$a;

    sget-object v1, LN2/z$a;->g:LN2/z$a;

    sget-object v2, LN2/z$a;->h:LN2/z$a;

    sget-object v3, LN2/z$a;->i:LN2/z$a;

    sget-object v4, LN2/z$a;->j:LN2/z$a;

    filled-new-array {v0, v1, v2, v3, v4}, [LN2/z$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/z$a;
    .locals 1

    const-class v0, LN2/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/z$a;

    return-object p0
.end method

.method public static values()[LN2/z$a;
    .locals 1

    sget-object v0, LN2/z$a;->k:[LN2/z$a;

    invoke-virtual {v0}, [LN2/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/z$a;

    return-object v0
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-wide v0, p0, LN2/z$a;->e:J

    return-wide v0
.end method
