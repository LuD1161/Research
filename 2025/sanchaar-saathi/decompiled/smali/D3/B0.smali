.class public final LD3/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/W;
.implements LD3/r;


# static fields
.field public static final e:LD3/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/B0;

    invoke-direct {v0}, LD3/B0;-><init>()V

    sput-object v0, LD3/B0;->e:LD3/B0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getParent()LD3/p0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
