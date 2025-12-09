.class public final enum Lr0/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:Lr0/d;

.field public static final enum g:Lr0/d;

.field public static final enum h:Lr0/d;

.field public static final enum i:Lr0/d;

.field public static final enum j:Lr0/d;

.field public static final synthetic k:[Lr0/d;


# instance fields
.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr0/d;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "DEX_FILES"

    invoke-direct {v0, v4, v1, v2, v3}, Lr0/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lr0/d;->f:Lr0/d;

    new-instance v0, Lr0/d;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "EXTRA_DESCRIPTORS"

    invoke-direct {v0, v4, v1, v2, v3}, Lr0/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lr0/d;->g:Lr0/d;

    new-instance v0, Lr0/d;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "CLASSES"

    invoke-direct {v0, v4, v1, v2, v3}, Lr0/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lr0/d;->h:Lr0/d;

    new-instance v0, Lr0/d;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v4, "METHODS"

    invoke-direct {v0, v4, v1, v2, v3}, Lr0/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lr0/d;->i:Lr0/d;

    new-instance v0, Lr0/d;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v4, "AGGREGATION_COUNT"

    invoke-direct {v0, v4, v1, v2, v3}, Lr0/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lr0/d;->j:Lr0/d;

    invoke-static {}, Lr0/d;->b()[Lr0/d;

    move-result-object v0

    sput-object v0, Lr0/d;->k:[Lr0/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lr0/d;->e:J

    return-void
.end method

.method public static synthetic b()[Lr0/d;
    .locals 5

    sget-object v0, Lr0/d;->f:Lr0/d;

    sget-object v1, Lr0/d;->g:Lr0/d;

    sget-object v2, Lr0/d;->h:Lr0/d;

    sget-object v3, Lr0/d;->i:Lr0/d;

    sget-object v4, Lr0/d;->j:Lr0/d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lr0/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/d;
    .locals 1

    const-class v0, Lr0/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/d;

    return-object p0
.end method

.method public static values()[Lr0/d;
    .locals 1

    sget-object v0, Lr0/d;->k:[Lr0/d;

    invoke-virtual {v0}, [Lr0/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/d;

    return-object v0
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-wide v0, p0, Lr0/d;->e:J

    return-wide v0
.end method
