.class public final LH3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/e;


# static fields
.field public static final e:LH3/l;

.field public static final f:Ll3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/l;

    invoke-direct {v0}, LH3/l;-><init>()V

    sput-object v0, LH3/l;->e:LH3/l;

    sget-object v0, Ll3/j;->e:Ll3/j;

    sput-object v0, LH3/l;->f:Ll3/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll3/i;
    .locals 1

    sget-object v0, LH3/l;->f:Ll3/i;

    return-object v0
.end method

.method public q(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
