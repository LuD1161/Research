.class public final enum LN2/z$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum f:LN2/z$b;

.field public static final enum g:LN2/z$b;

.field public static final enum h:LN2/z$b;

.field public static final synthetic i:[LN2/z$b;


# instance fields
.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LN2/z$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "kDown"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$b;->f:LN2/z$b;

    new-instance v0, LN2/z$b;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "kUp"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$b;->g:LN2/z$b;

    new-instance v0, LN2/z$b;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "kRepeat"

    invoke-direct {v0, v4, v1, v2, v3}, LN2/z$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LN2/z$b;->h:LN2/z$b;

    invoke-static {}, LN2/z$b;->b()[LN2/z$b;

    move-result-object v0

    sput-object v0, LN2/z$b;->i:[LN2/z$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, LN2/z$b;->e:J

    return-void
.end method

.method public static synthetic b()[LN2/z$b;
    .locals 3

    sget-object v0, LN2/z$b;->f:LN2/z$b;

    sget-object v1, LN2/z$b;->g:LN2/z$b;

    sget-object v2, LN2/z$b;->h:LN2/z$b;

    filled-new-array {v0, v1, v2}, [LN2/z$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN2/z$b;
    .locals 1

    const-class v0, LN2/z$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN2/z$b;

    return-object p0
.end method

.method public static values()[LN2/z$b;
    .locals 1

    sget-object v0, LN2/z$b;->i:[LN2/z$b;

    invoke-virtual {v0}, [LN2/z$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN2/z$b;

    return-object v0
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-wide v0, p0, LN2/z$b;->e:J

    return-wide v0
.end method
