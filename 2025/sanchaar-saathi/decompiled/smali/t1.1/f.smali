.class public final Lt1/f;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt1/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Lcom/google/android/gms/internal/clearcut/X1;

.field public f:[B

.field public g:[I

.field public h:[Ljava/lang/String;

.field public i:[I

.field public j:[[B

.field public k:[LO1/a;

.field public l:Z

.field public final m:Lcom/google/android/gms/internal/clearcut/M1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/g;

    invoke-direct {v0}, Lt1/g;-><init>()V

    sput-object v0, Lt1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/X1;Lcom/google/android/gms/internal/clearcut/M1;Lt1/a$c;Lt1/a$c;[I[Ljava/lang/String;[I[[B[LO1/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    iput-object p2, p0, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    iput-object p5, p0, Lt1/f;->g:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lt1/f;->h:[Ljava/lang/String;

    iput-object p7, p0, Lt1/f;->i:[I

    iput-object p1, p0, Lt1/f;->j:[[B

    iput-object p1, p0, Lt1/f;->k:[LO1/a;

    iput-boolean p10, p0, Lt1/f;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/X1;[B[I[Ljava/lang/String;[I[[BZ[LO1/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    iput-object p2, p0, Lt1/f;->f:[B

    iput-object p3, p0, Lt1/f;->g:[I

    iput-object p4, p0, Lt1/f;->h:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    iput-object p5, p0, Lt1/f;->i:[I

    iput-object p6, p0, Lt1/f;->j:[[B

    iput-object p8, p0, Lt1/f;->k:[LO1/a;

    iput-boolean p7, p0, Lt1/f;->l:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt1/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lt1/f;

    iget-object v1, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    iget-object v3, p1, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    invoke-static {v1, v3}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->f:[B

    iget-object v3, p1, Lt1/f;->f:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->g:[I

    iget-object v3, p1, Lt1/f;->g:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->h:[Ljava/lang/String;

    iget-object v3, p1, Lt1/f;->h:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    iget-object v3, p1, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    invoke-static {v1, v3}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, v1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->i:[I

    iget-object v3, p1, Lt1/f;->i:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->j:[[B

    iget-object v3, p1, Lt1/f;->j:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt1/f;->k:[LO1/a;

    iget-object v3, p1, Lt1/f;->k:[LO1/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lt1/f;->l:Z

    iget-boolean p1, p1, Lt1/f;->l:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 11

    iget-object v0, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    iget-object v1, p0, Lt1/f;->f:[B

    iget-object v2, p0, Lt1/f;->g:[I

    iget-object v3, p0, Lt1/f;->h:[Ljava/lang/String;

    iget-object v4, p0, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    iget-object v7, p0, Lt1/f;->i:[I

    iget-object v8, p0, Lt1/f;->j:[[B

    iget-object v9, p0, Lt1/f;->k:[LO1/a;

    iget-boolean v5, p0, Lt1/f;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz1/n;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->f:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->g:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->i:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->j:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/f;->k:[LO1/a;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lt1/f;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lt1/f;->e:Lcom/google/android/gms/internal/clearcut/X1;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lt1/f;->f:[B

    invoke-static {p1, v1, v2, v3}, LA1/c;->e(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lt1/f;->g:[I

    invoke-static {p1, v1, v2, v3}, LA1/c;->j(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lt1/f;->h:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LA1/c;->n(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lt1/f;->i:[I

    invoke-static {p1, v1, v2, v3}, LA1/c;->j(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lt1/f;->j:[[B

    invoke-static {p1, v1, v2, v3}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lt1/f;->l:Z

    invoke-static {p1, v1, v2}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lt1/f;->k:[LO1/a;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
